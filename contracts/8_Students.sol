// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Students{

    struct entity{
        string Name;
        uint256 id;
        uint256 classYear;
        bool isVerified;
    }

    entity[] public students;

    function add(string memory _name, uint256 _id, uint256 year, bool _isVerified) public {  //Adds Students 
        students.push(entity(_name, _id, year, _isVerified));
    }

    function find(uint256 _id) internal view returns (uint256){     //Finds Students
        for(uint256 i = 0; i < students.length; i++){
            if(students[i].id == _id){
                return i;
            }
        }
        revert('Does not exist');
    }

    function read() public view returns(entity[] memory){       //Display all Students
        return students;
    }

    function update(string memory _name, uint256 _id, uint256 year, bool _isVerified) public{       //Updates the info of Student choosen
        uint256 i = find(_id);
        students[i].Name = _name;
        students[i].id = _id;
        students[i].classYear = year;
        students[i].isVerified = _isVerified; 
    }

    function remove() public{       //Removes the last Student from the list
        students.pop();
    }
}